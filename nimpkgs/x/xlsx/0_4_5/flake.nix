{
  description = ''Read and parse Excel files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-xlsx-0_4_5.flake = false;
  inputs.src-xlsx-0_4_5.type = "github";
  inputs.src-xlsx-0_4_5.owner = "xflywind";
  inputs.src-xlsx-0_4_5.repo = "xlsx";
  inputs.src-xlsx-0_4_5.ref = "refs/tags/0.4.5";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, flakeNimbleLib, src-xlsx-0_4_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xlsx-0_4_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xlsx-0_4_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}