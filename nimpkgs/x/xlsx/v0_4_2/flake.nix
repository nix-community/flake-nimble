{
  description = ''Read and parse Excel files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-xlsx-v0_4_2.flake = false;
  inputs.src-xlsx-v0_4_2.type = "github";
  inputs.src-xlsx-v0_4_2.owner = "xflywind";
  inputs.src-xlsx-v0_4_2.repo = "xlsx";
  inputs.src-xlsx-v0_4_2.ref = "refs/tags/v0.4.2";
  inputs.src-xlsx-v0_4_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."zip".type = "github";
  # inputs."zip".owner = "riinr";
  # inputs."zip".repo = "flake-nimble";
  # inputs."zip".ref = "flake-pinning";
  # inputs."zip".dir = "nimpkgs/z/zip";
  # inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-xlsx-v0_4_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xlsx-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xlsx-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}