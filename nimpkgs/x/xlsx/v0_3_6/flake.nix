{
  description = ''Read and parse Excel files'';
  inputs.src-xlsx-v0_3_6.flake = false;
  inputs.src-xlsx-v0_3_6.type = "github";
  inputs.src-xlsx-v0_3_6.owner = "xflywind";
  inputs.src-xlsx-v0_3_6.repo = "xlsx";
  inputs.src-xlsx-v0_3_6.ref = "refs/tags/v0.3.6";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-xlsx-v0_3_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xlsx-v0_3_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xlsx-v0_3_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}