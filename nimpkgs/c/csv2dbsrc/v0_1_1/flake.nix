{
  description = ''create db util sources from csv'';
  inputs.src-csv2dbsrc-v0_1_1.flake = false;
  inputs.src-csv2dbsrc-v0_1_1.type = "github";
  inputs.src-csv2dbsrc-v0_1_1.owner = "z-kk";
  inputs.src-csv2dbsrc-v0_1_1.repo = "csv2dbsrc";
  inputs.src-csv2dbsrc-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-csv2dbsrc-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csv2dbsrc-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-csv2dbsrc-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}