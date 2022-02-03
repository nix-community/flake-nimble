{
  description = ''<VS Code Data Swapper> Easily swap between multiple data folders.'';
  inputs.src-vscds-master.flake = false;
  inputs.src-vscds-master.type = "github";
  inputs.src-vscds-master.owner = "doongjohn";
  inputs.src-vscds-master.repo = "vscds";
  inputs.src-vscds-master.ref = "refs/heads/master";
  
  
  inputs."nimlevenshtein".url = "path:../../../n/nimlevenshtein";
  inputs."nimlevenshtein".type = "github";
  inputs."nimlevenshtein".owner = "riinr";
  inputs."nimlevenshtein".repo = "flake-nimble";
  inputs."nimlevenshtein".ref = "flake-pinning";
  inputs."nimlevenshtein".dir = "nimpkgs/n/nimlevenshtein";

  outputs = { self, nixpkgs, src-vscds-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vscds-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vscds-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}