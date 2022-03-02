{
  description = ''Read and parse Excel files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-xlsx-v0_2_0.flake = false;
  inputs.src-xlsx-v0_2_0.type = "github";
  inputs.src-xlsx-v0_2_0.owner = "xflywind";
  inputs.src-xlsx-v0_2_0.repo = "xlsx";
  inputs.src-xlsx-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-xlsx-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."zip".type = "github";
  # inputs."zip".owner = "riinr";
  # inputs."zip".repo = "flake-nimble";
  # inputs."zip".ref = "flake-pinning";
  # inputs."zip".dir = "nimpkgs/z/zip";
  # inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-xlsx-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xlsx-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xlsx-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}