{
  description = ''objective-c runtime bindings'';
  inputs.src-objc_runtime-v0_1_2.flake = false;
  inputs.src-objc_runtime-v0_1_2.type = "github";
  inputs.src-objc_runtime-v0_1_2.owner = "bung87";
  inputs.src-objc_runtime-v0_1_2.repo = "objc_runtime";
  inputs.src-objc_runtime-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
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

  outputs = { self, nixpkgs, src-objc_runtime-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-objc_runtime-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-objc_runtime-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}