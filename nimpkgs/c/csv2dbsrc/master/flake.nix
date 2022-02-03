{
  description = ''create db util sources from csv'';
  inputs.src-csv2dbsrc-master.flake = false;
  inputs.src-csv2dbsrc-master.type = "github";
  inputs.src-csv2dbsrc-master.owner = "z-kk";
  inputs.src-csv2dbsrc-master.repo = "csv2dbsrc";
  inputs.src-csv2dbsrc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-csv2dbsrc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csv2dbsrc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-csv2dbsrc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}