import 'package:laravel_exception/laravel_exception.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test(
    'laravel 500 response aka InternalServerError',
    () {
      final exception = LServerException.parse(response);
      expect(exception.message, equals('Undefined variable: name'));
      expect(exception.exception, equals('ErrorException'));
      expect(
          exception.file, equals('C:\\path_to_your_project\\routes\\api.php'));
      expect(exception.line, equals(175));
      expect(exception.trace!.isNotEmpty, isTrue);
      expect(exception.trace!.length, equals(41));
    },
  );
}

final response = {
  "message": "Undefined variable: name",
  "exception": "ErrorException",
  "file": "C:\\path_to_your_project\\routes\\api.php",
  "line": 175,
  "trace": [
    {
      "file": "C:\\path_to_your_project\\routes\\api.php",
      "line": 175,
      "function": "handleError",
      "class": "Illuminate\\Foundation\\Bootstrap\\HandleExceptions",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php",
      "line": 225,
      "function": "{closure}",
      "class": "Illuminate\\Routing\\RouteFileRegistrar",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php",
      "line": 199,
      "function": "runCallable",
      "class": "Illuminate\\Routing\\Route",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php",
      "line": 685,
      "function": "run",
      "class": "Illuminate\\Routing\\Route",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php",
      "line": 128,
      "function": "Illuminate\\Routing\\{closure}",
      "class": "Illuminate\\Routing\\Router",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php",
      "line": 41,
      "function": "Illuminate\\Pipeline\\{closure}",
      "class": "Illuminate\\Pipeline\\Pipeline",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php",
      "line": 167,
      "function": "handle",
      "class": "Illuminate\\Routing\\Middleware\\SubstituteBindings",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\ThrottleRequests.php",
      "line": 59,
      "function": "Illuminate\\Pipeline\\{closure}",
      "class": "Illuminate\\Pipeline\\Pipeline",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php",
      "line": 167,
      "function": "handle",
      "class": "Illuminate\\Routing\\Middleware\\ThrottleRequests",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\mcamara\\laravel-localization\\src\\Mcamara\\LaravelLocalization\\Middleware\\LaravelLocalizationViewPath.php",
      "line": 33,
      "function": "Illuminate\\Pipeline\\{closure}",
      "class": "Illuminate\\Pipeline\\Pipeline",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php",
      "line": 167,
      "function": "handle",
      "class":
          "Mcamara\\LaravelLocalization\\Middleware\\LaravelLocalizationViewPath",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\mcamara\\laravel-localization\\src\\Mcamara\\LaravelLocalization\\Middleware\\LaravelLocalizationRedirectFilter.php",
      "line": 45,
      "function": "Illuminate\\Pipeline\\{closure}",
      "class": "Illuminate\\Pipeline\\Pipeline",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php",
      "line": 167,
      "function": "handle",
      "class":
          "Mcamara\\LaravelLocalization\\Middleware\\LaravelLocalizationRedirectFilter",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\mcamara\\laravel-localization\\src\\Mcamara\\LaravelLocalization\\Middleware\\LocaleSessionRedirect.php",
      "line": 32,
      "function": "Illuminate\\Pipeline\\{closure}",
      "class": "Illuminate\\Pipeline\\Pipeline",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php",
      "line": 167,
      "function": "handle",
      "class":
          "Mcamara\\LaravelLocalization\\Middleware\\LocaleSessionRedirect",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php",
      "line": 103,
      "function": "Illuminate\\Pipeline\\{closure}",
      "class": "Illuminate\\Pipeline\\Pipeline",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php",
      "line": 687,
      "function": "then",
      "class": "Illuminate\\Pipeline\\Pipeline",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php",
      "line": 662,
      "function": "runRouteWithinStack",
      "class": "Illuminate\\Routing\\Router",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php",
      "line": 628,
      "function": "runRoute",
      "class": "Illuminate\\Routing\\Router",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php",
      "line": 617,
      "function": "dispatchToRoute",
      "class": "Illuminate\\Routing\\Router",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php",
      "line": 165,
      "function": "dispatch",
      "class": "Illuminate\\Routing\\Router",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php",
      "line": 128,
      "function": "Illuminate\\Foundation\\Http\\{closure}",
      "class": "Illuminate\\Foundation\\Http\\Kernel",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\barryvdh\\laravel-debugbar\\src\\Middleware\\InjectDebugbar.php",
      "line": 67,
      "function": "Illuminate\\Pipeline\\{closure}",
      "class": "Illuminate\\Pipeline\\Pipeline",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php",
      "line": 167,
      "function": "handle",
      "class": "Barryvdh\\Debugbar\\Middleware\\InjectDebugbar",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php",
      "line": 21,
      "function": "Illuminate\\Pipeline\\{closure}",
      "class": "Illuminate\\Pipeline\\Pipeline",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php",
      "line": 167,
      "function": "handle",
      "class": "Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php",
      "line": 21,
      "function": "Illuminate\\Pipeline\\{closure}",
      "class": "Illuminate\\Pipeline\\Pipeline",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php",
      "line": 167,
      "function": "handle",
      "class": "Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php",
      "line": 27,
      "function": "Illuminate\\Pipeline\\{closure}",
      "class": "Illuminate\\Pipeline\\Pipeline",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php",
      "line": 167,
      "function": "handle",
      "class": "Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php",
      "line": 63,
      "function": "Illuminate\\Pipeline\\{closure}",
      "class": "Illuminate\\Pipeline\\Pipeline",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php",
      "line": 167,
      "function": "handle",
      "class":
          "Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\fruitcake\\laravel-cors\\src\\HandleCors.php",
      "line": 37,
      "function": "Illuminate\\Pipeline\\{closure}",
      "class": "Illuminate\\Pipeline\\Pipeline",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php",
      "line": 167,
      "function": "handle",
      "class": "Fruitcake\\Cors\\HandleCors",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\fideloper\\proxy\\src\\TrustProxies.php",
      "line": 57,
      "function": "Illuminate\\Pipeline\\{closure}",
      "class": "Illuminate\\Pipeline\\Pipeline",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php",
      "line": 167,
      "function": "handle",
      "class": "Fideloper\\Proxy\\TrustProxies",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php",
      "line": 103,
      "function": "Illuminate\\Pipeline\\{closure}",
      "class": "Illuminate\\Pipeline\\Pipeline",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php",
      "line": 140,
      "function": "then",
      "class": "Illuminate\\Pipeline\\Pipeline",
      "type": "->"
    },
    {
      "file":
          "C:\\path_to_your_project\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php",
      "line": 109,
      "function": "sendRequestThroughRouter",
      "class": "Illuminate\\Foundation\\Http\\Kernel",
      "type": "->"
    },
    {
      "file": "C:\\path_to_your_project\\public\\index.php",
      "line": 55,
      "function": "handle",
      "class": "Illuminate\\Foundation\\Http\\Kernel",
      "type": "->"
    },
    {
      "file": "C:\\path_to_your_project\\server.php",
      "line": 21,
      "function": "require_once"
    }
  ]
};
