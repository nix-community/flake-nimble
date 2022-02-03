{
  description = ''create db util sources from csv'';
  inputs.src-csv2dbsrc-v0_2_2.flake = false;
  inputs.src-csv2dbsrc-v0_2_2.type = "github";
  inputs.src-csv2dbsrc-v0_2_2.owner = "z-kk";
  inputs.src-csv2dbsrc-v0_2_2.repo = "csv2dbsrc";
  inputs.src-csv2dbsrc-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-csv2dbsrc-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csv2dbsrc-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-csv2dbsrc-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}