{
  description = ''Hackathon Web Scratchpad for teaching Nim on events using Wifi with limited or no Internet'';
  inputs.src-hackpad-master.flake = false;
  inputs.src-hackpad-master.type = "github";
  inputs.src-hackpad-master.owner = "juancarlospaco";
  inputs.src-hackpad-master.repo = "nim-hackpad";
  inputs.src-hackpad-master.ref = "refs/heads/master";
  
  
  inputs."jester".url = "path:../../../j/jester";
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  
  inputs."zip".url = "path:../../../z/zip";
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-hackpad-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hackpad-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hackpad-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}