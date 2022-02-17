{
  description = ''A tool for people who don't like Nim's indentation-based syntax'';
  inputs.src-nimdenter-master.flake = false;
  inputs.src-nimdenter-master.type = "github";
  inputs.src-nimdenter-master.owner = "xigoi";
  inputs.src-nimdenter-master.repo = "nimdenter";
  inputs.src-nimdenter-master.ref = "refs/heads/master";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-nimdenter-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimdenter-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimdenter-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}