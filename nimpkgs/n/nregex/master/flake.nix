{
  description = ''A DFA based regex engine'';
  inputs.src-nregex-master.flake = false;
  inputs.src-nregex-master.type = "github";
  inputs.src-nregex-master.owner = "nitely";
  inputs.src-nregex-master.repo = "nregex";
  inputs.src-nregex-master.ref = "refs/heads/master";
  
  
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  
  inputs."unicodeplus".type = "github";
  inputs."unicodeplus".owner = "riinr";
  inputs."unicodeplus".repo = "flake-nimble";
  inputs."unicodeplus".ref = "flake-pinning";
  inputs."unicodeplus".dir = "nimpkgs/u/unicodeplus";

  outputs = { self, nixpkgs, src-nregex-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nregex-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nregex-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}