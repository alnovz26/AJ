@extends('layouts.admin')
@section('content')
@can('title_create')
    <div style="margin-bottom: 10px;" class="row">
        <div class="col-lg-12">
            <a class="btn btn-success" href="{{ route('admin.titles.create') }}">
                {{ trans('global.add') }} {{ trans('cruds.title.title_singular') }}
            </a>
        </div>
    </div>
@endcan
<div class="card">
    <div class="card-header">
        {{ trans('cruds.title.title_singular') }} {{ trans('global.list') }}
    </div>

    <div class="card-body">
        <div class="table-responsive">
            <table class=" table table-bordered table-striped table-hover datatable datatable-Title">
                <thead>
                    <tr>
                        <th width="10">

                        </th>
                        <th>
                            {{ trans('cruds.title.fields.status_2') }}
                        </th>
                        <th>
                            {{ trans('cruds.title.fields.title') }}
                        </th>
                        <th>
                            {{ trans('cruds.title.fields.slug') }}
                        </th>
                        <th>
                            {{ trans('cruds.title.fields.date') }}
                        </th>
                        <th>
                            {{ trans('cruds.title.fields.score_min') }}
                        </th>
                        <th>
                            {{ trans('cruds.title.fields.score_max') }}
                        </th>
                        <th>
                            &nbsp;
                        </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($titles as $key => $title)
                        <tr data-entry-id="{{ $title->id }}">
                            <td>

                            </td>
                            <td>
                                {{ App\Models\Title::STATUS_2_RADIO[$title->status_2] ?? '' }}
                            </td>
                            <td>
                                {{ $title->title ?? '' }}
                            </td>
                            <td>
                                <a href="{{ URL::to('/') . '/tabulation/' . $title->slug . '/login'}}" target="_blank" >{{ URL::to('/') . '/tabulation/' . $title->slug . '/login' }}</a>
                        </td>
                            <td>
                                {{ $title->date ?? '' }}
                            </td>
                            <td>
                                {{ $title->score_min ?? '' }}
                            </td>
                            <td>
                                {{ $title->score_max ?? '' }}
                            </td>
                            <td>
                                @can('title_show')
                                    <a class="btn btn-xs btn-primary" href="{{ route('admin.titles.show', $title->id) }}">
                                        {{ trans('global.view') }}
                                    </a>
                                @endcan

                                @can('title_edit')
                                    <a class="btn btn-xs btn-info" href="{{ route('admin.titles.edit', $title->id) }}">
                                        {{ trans('global.edit') }}
                                    </a>
                                @endcan

                                @can('title_delete')
                                    <form action="{{ route('admin.titles.destroy', $title->id) }}" method="POST" onsubmit="return confirm('{{ trans('global.areYouSure') }}');" style="display: inline-block;">
                                        <input type="hidden" name="_method" value="DELETE">
                                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                        <input type="submit" class="btn btn-xs btn-danger" value="{{ trans('global.delete') }}">
                                    </form>
                                @endcan

                            </td>

                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>



@endsection
@section('scripts')
@parent
<script>
    $(function () {
  let dtButtons = $.extend(true, [], $.fn.dataTable.defaults.buttons)
@can('title_delete')
  let deleteButtonTrans = '{{ trans('global.datatables.delete') }}'
  let deleteButton = {
    text: deleteButtonTrans,
    url: "{{ route('admin.titles.massDestroy') }}",
    className: 'btn-danger',
    action: function (e, dt, node, config) {
      var ids = $.map(dt.rows({ selected: true }).nodes(), function (entry) {
          return $(entry).data('entry-id')
      });

      if (ids.length === 0) {
        alert('{{ trans('global.datatables.zero_selected') }}')

        return
      }

      if (confirm('{{ trans('global.areYouSure') }}')) {
        $.ajax({
          headers: {'x-csrf-token': _token},
          method: 'POST',
          url: config.url,
          data: { ids: ids, _method: 'DELETE' }})
          .done(function () { location.reload() })
      }
    }
  }
  dtButtons.push(deleteButton)
@endcan

  $.extend(true, $.fn.dataTable.defaults, {
    orderCellsTop: true,
    order: [[ 1, 'desc' ]],
    pageLength: 100,
  });
  let table = $('.datatable-Title:not(.ajaxTable)').DataTable({ buttons: dtButtons })
  $('a[data-toggle="tab"]').on('shown.bs.tab click', function(e){
      $($.fn.dataTable.tables(true)).DataTable()
          .columns.adjust();
  });

})

</script>
@endsection
