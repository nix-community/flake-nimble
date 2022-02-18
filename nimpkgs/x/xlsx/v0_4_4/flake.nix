{
  description = ''Read and parse Excel files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-xlsx-v0_4_4.flake = false;
  inputs.src-xlsx-v0_4_4.type = "github";
  inputs.src-xlsx-v0_4_4.owner = "xflywind";
  inputs.src-xlsx-v0_4_4.repo = "xlsx";
  inputs.src-xlsx-v0_4_4.ref = "refs/tags/v0.4.4";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, flakeNimbleLib, src-xlsx-v0_4_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xlsx-v0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xlsx-v0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}