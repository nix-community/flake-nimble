{
  description = ''create db util sources from csv'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-csv2dbsrc-v0_2_1.flake = false;
  inputs.src-csv2dbsrc-v0_2_1.type = "github";
  inputs.src-csv2dbsrc-v0_2_1.owner = "z-kk";
  inputs.src-csv2dbsrc-v0_2_1.repo = "csv2dbsrc";
  inputs.src-csv2dbsrc-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-csv2dbsrc-v0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csv2dbsrc-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-csv2dbsrc-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}