{
  description = ''Fetch url resources via HTTP and HTTPS.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-puppy-1_4_0.flake = false;
  inputs.src-puppy-1_4_0.type = "github";
  inputs.src-puppy-1_4_0.owner = "treeform";
  inputs.src-puppy-1_4_0.repo = "puppy";
  inputs.src-puppy-1_4_0.ref = "refs/tags/1.4.0";
  inputs.src-puppy-1_4_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."urlly".type = "github";
  # inputs."urlly".owner = "riinr";
  # inputs."urlly".repo = "flake-nimble";
  # inputs."urlly".ref = "flake-pinning";
  # inputs."urlly".dir = "nimpkgs/u/urlly";
  # inputs."urlly".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."urlly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."libcurl".type = "github";
  # inputs."libcurl".owner = "riinr";
  # inputs."libcurl".repo = "flake-nimble";
  # inputs."libcurl".ref = "flake-pinning";
  # inputs."libcurl".dir = "nimpkgs/l/libcurl";
  # inputs."libcurl".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."libcurl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."zippy".type = "github";
  # inputs."zippy".owner = "riinr";
  # inputs."zippy".repo = "flake-nimble";
  # inputs."zippy".ref = "flake-pinning";
  # inputs."zippy".dir = "nimpkgs/z/zippy";
  # inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-puppy-1_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-puppy-1_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-puppy-1_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}