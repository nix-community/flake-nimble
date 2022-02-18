{
  description = ''objective-c runtime bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-objc_runtime-v0_1_1.flake = false;
  inputs.src-objc_runtime-v0_1_1.type = "github";
  inputs.src-objc_runtime-v0_1_1.owner = "bung87";
  inputs.src-objc_runtime-v0_1_1.repo = "objc_runtime";
  inputs.src-objc_runtime-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."https://github.com/yglukhov/darwin".type = "github";
  inputs."https://github.com/yglukhov/darwin".owner = "riinr";
  inputs."https://github.com/yglukhov/darwin".repo = "flake-nimble";
  inputs."https://github.com/yglukhov/darwin".ref = "flake-pinning";
  inputs."https://github.com/yglukhov/darwin".dir = "nimpkgs/h/https://github.com/yglukhov/darwin";

  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, flakeNimbleLib, src-objc_runtime-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-objc_runtime-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-objc_runtime-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}