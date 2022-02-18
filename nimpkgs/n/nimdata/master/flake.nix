{
  description = ''DataFrame API enabling fast out-of-core data analytics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimdata-master.flake = false;
  inputs.src-nimdata-master.type = "github";
  inputs.src-nimdata-master.owner = "bluenote10";
  inputs.src-nimdata-master.repo = "NimData";
  inputs.src-nimdata-master.ref = "refs/heads/master";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  
  inputs."plotly".type = "github";
  inputs."plotly".owner = "riinr";
  inputs."plotly".repo = "flake-nimble";
  inputs."plotly".ref = "flake-pinning";
  inputs."plotly".dir = "nimpkgs/p/plotly";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimdata-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimdata-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimdata-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}