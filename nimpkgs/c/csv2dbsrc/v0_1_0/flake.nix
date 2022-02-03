{
  description = ''create db util sources from csv'';
  inputs.src-csv2dbsrc-v0_1_0.flake = false;
  inputs.src-csv2dbsrc-v0_1_0.type = "github";
  inputs.src-csv2dbsrc-v0_1_0.owner = "z-kk";
  inputs.src-csv2dbsrc-v0_1_0.repo = "csv2dbsrc";
  inputs.src-csv2dbsrc-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-csv2dbsrc-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csv2dbsrc-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-csv2dbsrc-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}