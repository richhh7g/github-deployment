<?php
use App\HelloWorld;

it('should be return hello world message', function () {
    $instance = new HelloWorld();

    expect($instance->message())->toBe("Hello World!");
});
