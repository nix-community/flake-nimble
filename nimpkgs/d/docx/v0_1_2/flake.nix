{
  description = ''A simple docx reader.'';
  inputs.src-docx-v0_1_2.flake = false;
  inputs.src-docx-v0_1_2.type = "github";
  inputs.src-docx-v0_1_2.owner = "xflywind";
  inputs.src-docx-v0_1_2.repo = "docx";
  inputs.src-docx-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-docx-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-docx-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-docx-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}