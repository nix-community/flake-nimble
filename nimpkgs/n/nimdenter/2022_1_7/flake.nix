{
  description = ''A tool for people who don't like Nim's indentation-based syntax'';
  inputs.src-nimdenter-2022_1_7.flake = false;
  inputs.src-nimdenter-2022_1_7.type = "github";
  inputs.src-nimdenter-2022_1_7.owner = "xigoi";
  inputs.src-nimdenter-2022_1_7.repo = "nimdenter";
  inputs.src-nimdenter-2022_1_7.ref = "refs/tags/2022.1.7";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-nimdenter-2022_1_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimdenter-2022_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimdenter-2022_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}