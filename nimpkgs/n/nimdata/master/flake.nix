{
  description = ''DataFrame API enabling fast out-of-core data analytics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimdata-master.flake = false;
  inputs.src-nimdata-master.type = "github";
  inputs.src-nimdata-master.owner = "bluenote10";
  inputs.src-nimdata-master.repo = "NimData";
  inputs.src-nimdata-master.ref = "refs/heads/master";
  inputs.src-nimdata-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."zip".type = "github";
  # inputs."zip".owner = "riinr";
  # inputs."zip".repo = "flake-nimble";
  # inputs."zip".ref = "flake-pinning";
  # inputs."zip".dir = "nimpkgs/z/zip";
  # inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."plotly".type = "github";
  # inputs."plotly".owner = "riinr";
  # inputs."plotly".repo = "flake-nimble";
  # inputs."plotly".ref = "flake-pinning";
  # inputs."plotly".dir = "nimpkgs/p/plotly";
  # inputs."plotly".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."plotly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-NimData-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-NimData-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-NimData-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}