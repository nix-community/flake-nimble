{
  description = ''Read and parse Excel files'';
  inputs.src-xlsx-master.flake = false;
  inputs.src-xlsx-master.type = "github";
  inputs.src-xlsx-master.owner = "xflywind";
  inputs.src-xlsx-master.repo = "xlsx";
  inputs.src-xlsx-master.ref = "refs/heads/master";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-xlsx-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xlsx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xlsx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}