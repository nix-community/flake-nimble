{
  description = ''Read and parse Excel files'';
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

  outputs = { self, nixpkgs, src-xlsx-0_4_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xlsx-0_4_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xlsx-0_4_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}