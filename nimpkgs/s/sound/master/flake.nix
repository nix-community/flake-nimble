{
  description = ''Cross-platform sound mixer library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sound-master.flake = false;
  inputs.src-sound-master.type = "github";
  inputs.src-sound-master.owner = "yglukhov";
  inputs.src-sound-master.repo = "sound";
  inputs.src-sound-master.ref = "refs/heads/master";
  inputs.src-sound-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."jnim".type = "github";
  # inputs."jnim".owner = "riinr";
  # inputs."jnim".repo = "flake-nimble";
  # inputs."jnim".ref = "flake-pinning";
  # inputs."jnim".dir = "nimpkgs/j/jnim";
  # inputs."jnim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/yglukhov/async_http_request".type = "github";
  # inputs."https://github.com/yglukhov/async_http_request".owner = "riinr";
  # inputs."https://github.com/yglukhov/async_http_request".repo = "flake-nimble";
  # inputs."https://github.com/yglukhov/async_http_request".ref = "flake-pinning";
  # inputs."https://github.com/yglukhov/async_http_request".dir = "nimpkgs/h/https://github.com/yglukhov/async_http_request";
  # inputs."https://github.com/yglukhov/async_http_request".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/yglukhov/async_http_request".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."jsbind".type = "github";
  # inputs."jsbind".owner = "riinr";
  # inputs."jsbind".repo = "flake-nimble";
  # inputs."jsbind".ref = "flake-pinning";
  # inputs."jsbind".dir = "nimpkgs/j/jsbind";
  # inputs."jsbind".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jsbind".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/yglukhov/android".type = "github";
  # inputs."https://github.com/yglukhov/android".owner = "riinr";
  # inputs."https://github.com/yglukhov/android".repo = "flake-nimble";
  # inputs."https://github.com/yglukhov/android".ref = "flake-pinning";
  # inputs."https://github.com/yglukhov/android".dir = "nimpkgs/h/https://github.com/yglukhov/android";
  # inputs."https://github.com/yglukhov/android".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/yglukhov/android".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-sound-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sound-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sound-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}