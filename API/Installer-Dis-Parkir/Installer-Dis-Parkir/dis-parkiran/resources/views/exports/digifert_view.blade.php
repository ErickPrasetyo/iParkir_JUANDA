<table>
    <thead>
    <tr>
        <th>Tag Number</th>
        <th>Value</th>
        <th>Date</th>
    </tr>
    </thead>
    <tbody>
    @foreach($data as $key)
        <tr>
            <td>{{ $key->tag_rapid_name }}</td>
            <td>{{ $key->val }}</td>
            <td>{{ $key->tanggal }}</td>
        </tr>
    @endforeach
    </tbody>
</table>