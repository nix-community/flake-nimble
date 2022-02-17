{
  description = ''Nim Library for sequence (protein/nucleotide) bioinformatics'';
  inputs.src-nimbioseq-master.flake = false;
  inputs.src-nimbioseq-master.type = "github";
  inputs.src-nimbioseq-master.owner = "jhbadger";
  inputs.src-nimbioseq-master.repo = "nimbioseq";
  inputs.src-nimbioseq-master.ref = "refs/heads/master";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-nimbioseq-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbioseq-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimbioseq-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}