{
  description = ''Get information on files and folders in OneDrive'';
  inputs.src-onedrive-master.flake = false;
  inputs.src-onedrive-master.type = "github";
  inputs.src-onedrive-master.owner = "ThomasTJdev";
  inputs.src-onedrive-master.repo = "nim_onedrive";
  inputs.src-onedrive-master.ref = "refs/heads/master";
  
  
  inputs."packedjson".type = "github";
  inputs."packedjson".owner = "riinr";
  inputs."packedjson".repo = "flake-nimble";
  inputs."packedjson".ref = "flake-pinning";
  inputs."packedjson".dir = "nimpkgs/p/packedjson";

  outputs = { self, nixpkgs, src-onedrive-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-onedrive-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-onedrive-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}