{
  description = ''Get information on files and folders in OneDrive'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-onedrive-master.flake = false;
  inputs.src-onedrive-master.type = "github";
  inputs.src-onedrive-master.owner = "ThomasTJdev";
  inputs.src-onedrive-master.repo = "nim_onedrive";
  inputs.src-onedrive-master.ref = "refs/heads/master";
  inputs.src-onedrive-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."packedjson".type = "github";
  # inputs."packedjson".owner = "riinr";
  # inputs."packedjson".repo = "flake-nimble";
  # inputs."packedjson".ref = "flake-pinning";
  # inputs."packedjson".dir = "nimpkgs/p/packedjson";
  # inputs."packedjson".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."packedjson".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-onedrive-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-onedrive-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-onedrive-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}