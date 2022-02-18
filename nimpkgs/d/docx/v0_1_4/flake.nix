{
  description = ''A simple docx reader.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-docx-v0_1_4.flake = false;
  inputs.src-docx-v0_1_4.type = "github";
  inputs.src-docx-v0_1_4.owner = "xflywind";
  inputs.src-docx-v0_1_4.repo = "docx";
  inputs.src-docx-v0_1_4.ref = "refs/tags/v0.1.4";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, flakeNimbleLib, src-docx-v0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-docx-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-docx-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}