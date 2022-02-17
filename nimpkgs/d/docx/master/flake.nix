{
  description = ''A simple docx reader.'';
  inputs.src-docx-master.flake = false;
  inputs.src-docx-master.type = "github";
  inputs.src-docx-master.owner = "xflywind";
  inputs.src-docx-master.repo = "docx";
  inputs.src-docx-master.ref = "refs/heads/master";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-docx-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-docx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-docx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}