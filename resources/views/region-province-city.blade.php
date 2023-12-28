<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="csrf-token" content="content">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>Region ng Ina Mo</title>


        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" >

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    </head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h2 class="text-success">HAHAHAHAHAH</h2>
                    </div>
                    <div class="card-body">
                     <form>
                        <div class="form-group">
                          <label for="region">Region</label>
                          <select class="form-control" id="region-dropdown">
                          <option value="">Select Region</option>

                            @foreach ($region as $region) 
                                <option value="{{$region->id}}">
                                 {{$region->name}}
                                </option>
                            @endforeach
                            
                          </select>
                        </div>
                        <div class="form-group">
                          <label for="province">Province</label>
                          <select class="form-control" id="province-dropdown">
                            
                          </select>
                        </div>                        

                        <div class="form-group">
                          <label for="city">City/Municipality</label>
                          <select class="form-control" id="city-dropdown">
                            
                          </select>
                        </div>
                    </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script>

$(document).ready(function() {

    $('#region-dropdown').on('change', function() {
            var region_id = this.value;
             $("#province-dropdown").html('');
            $.ajax({
                url:"{{url('get-provinces-by-region')}}",
                type: "POST",
                data: {
                    region_id: region_id,
                     _token: '{{csrf_token()}}' 
                },
                dataType : 'json',
                success: function(result){
                    $('#province-dropdown').html('<option value="">Select Province</option>'); 
                    $.each(result.provinces,function(key,value){
                    $("#province-dropdown").append('<option value="'+value.id+'">'+value.name+'</option>');
                    });
                    $('#city-dropdown').html('<option value="">Select Province First</option>'); 
                }
            });
        
        
    });    

    $('#province-dropdown').on('change', function() {
            var province_id = this.value;
             $("#city-dropdown").html('');
            $.ajax({
                url:"{{url('get-cities-by-province')}}",
                type: "POST",
                data: {
                    province_id: province_id,
                     _token: '{{csrf_token()}}' 
                },
                dataType : 'json',
                success: function(result){
                    $('#city-dropdown').html('<option value="">Select City/Municipality</option>'); 
                    $.each(result.cities,function(key,value){
                    $("#city-dropdown").append('<option value="'+value.id+'">'+value.name+'</option>');
                    });

                }
            });
        
        
    });
});
</script>
</body>
</html>