{
  description = ''A simple docx reader.'';
  inputs.src-docx-v0_1_4.flake = false;
  inputs.src-docx-v0_1_4.type = "github";
  inputs.src-docx-v0_1_4.owner = "xflywind";
  inputs.src-docx-v0_1_4.repo = "docx";
  inputs.src-docx-v0_1_4.ref = "refs/tags/v0.1.4";
  
  
  inputs."zip".url = "path:../../../z/zip";
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-docx-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-docx-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-docx-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}