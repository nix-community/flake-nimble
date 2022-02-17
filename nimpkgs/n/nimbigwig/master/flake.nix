{
  description = ''libBigWig wrapper for Nim'';
  inputs.src-nimbigwig-master.flake = false;
  inputs.src-nimbigwig-master.type = "github";
  inputs.src-nimbigwig-master.owner = "genotrance";
  inputs.src-nimbigwig-master.repo = "nimbigwig";
  inputs.src-nimbigwig-master.ref = "refs/heads/master";
  
  
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nimbigwig-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbigwig-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimbigwig-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}