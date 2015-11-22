% rebase('base.tpl', title='Servers')
<div class="row">
    <table class="table table-striped">
        <tr>
            <th>Icon</th>
            <th>Name</th>
            <th>Region</th>
            <th>Owner</th>
            <th>Members</th>
            <th>Online</th>
        </tr>
        %for server in servers:
        <tr>
            <td><img src="{{server['icon']}}"/></td>
            <td>{{server['name']}}</td>
            <td>{{server['region']}}</td>
            <td>{{server['owner_name']}}</td>
            <td>{{server['members']}}</td>
            <td>{{server['online']}}</td>
        </tr>
        %end
    </table>
    {{servers}}
</div>
