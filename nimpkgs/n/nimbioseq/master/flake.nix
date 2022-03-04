{
  description = ''Nim Library for sequence (protein/nucleotide) bioinformatics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimbioseq-master.flake = false;
  inputs.src-nimbioseq-master.type = "github";
  inputs.src-nimbioseq-master.owner = "jhbadger";
  inputs.src-nimbioseq-master.repo = "nimbioseq";
  inputs.src-nimbioseq-master.ref = "refs/heads/master";
  inputs.src-nimbioseq-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimbioseq-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbioseq-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimbioseq-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}