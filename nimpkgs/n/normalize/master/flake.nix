{
  description = ''Unicode normalization forms (tr15)'';
  inputs.src-normalize-master.flake = false;
  inputs.src-normalize-master.type = "github";
  inputs.src-normalize-master.owner = "nitely";
  inputs.src-normalize-master.repo = "nim-normalize";
  inputs.src-normalize-master.ref = "refs/heads/master";
  
  
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  outputs = { self, nixpkgs, src-normalize-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-normalize-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-normalize-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}