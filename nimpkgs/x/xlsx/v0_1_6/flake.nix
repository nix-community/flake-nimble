{
  description = ''Read and parse Excel files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-xlsx-v0_1_6.flake = false;
  inputs.src-xlsx-v0_1_6.type = "github";
  inputs.src-xlsx-v0_1_6.owner = "xflywind";
  inputs.src-xlsx-v0_1_6.repo = "xlsx";
  inputs.src-xlsx-v0_1_6.ref = "refs/tags/v0.1.6";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, flakeNimbleLib, src-xlsx-v0_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xlsx-v0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xlsx-v0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}