{
  description = ''Cross-platform sound mixer library'';
  inputs.src-sound-master.flake = false;
  inputs.src-sound-master.type = "github";
  inputs.src-sound-master.owner = "yglukhov";
  inputs.src-sound-master.repo = "sound";
  inputs.src-sound-master.ref = "refs/heads/master";
  
  
  inputs."jnim".type = "github";
  inputs."jnim".owner = "riinr";
  inputs."jnim".repo = "flake-nimble";
  inputs."jnim".ref = "flake-pinning";
  inputs."jnim".dir = "nimpkgs/j/jnim";

  
  inputs."https://github.com/yglukhov/async_http_request".type = "github";
  inputs."https://github.com/yglukhov/async_http_request".owner = "riinr";
  inputs."https://github.com/yglukhov/async_http_request".repo = "flake-nimble";
  inputs."https://github.com/yglukhov/async_http_request".ref = "flake-pinning";
  inputs."https://github.com/yglukhov/async_http_request".dir = "nimpkgs/h/https://github.com/yglukhov/async_http_request";

  
  inputs."jsbind".type = "github";
  inputs."jsbind".owner = "riinr";
  inputs."jsbind".repo = "flake-nimble";
  inputs."jsbind".ref = "flake-pinning";
  inputs."jsbind".dir = "nimpkgs/j/jsbind";

  
  inputs."https://github.com/yglukhov/android".type = "github";
  inputs."https://github.com/yglukhov/android".owner = "riinr";
  inputs."https://github.com/yglukhov/android".repo = "flake-nimble";
  inputs."https://github.com/yglukhov/android".ref = "flake-pinning";
  inputs."https://github.com/yglukhov/android".dir = "nimpkgs/h/https://github.com/yglukhov/android";

  outputs = { self, nixpkgs, src-sound-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sound-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sound-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}