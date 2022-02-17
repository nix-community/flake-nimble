{
  description = ''A highlighter for diff -u-like output & port of Python difflib'';
  inputs.src-hldiff-master.flake = false;
  inputs.src-hldiff-master.type = "github";
  inputs.src-hldiff-master.owner = "c-blake";
  inputs.src-hldiff-master.repo = "hldiff";
  inputs.src-hldiff-master.ref = "refs/heads/master";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-hldiff-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hldiff-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hldiff-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}