{
  description = ''Allows statistics to be sent to and recorded in Google Analytics.'';
  inputs.src-analytics-master.flake = false;
  inputs.src-analytics-master.type = "github";
  inputs.src-analytics-master.owner = "dom96";
  inputs.src-analytics-master.repo = "analytics";
  inputs.src-analytics-master.ref = "refs/heads/master";
  
  
  inputs."uuids".url = "path:../../../u/uuids";
  inputs."uuids".type = "github";
  inputs."uuids".owner = "riinr";
  inputs."uuids".repo = "flake-nimble";
  inputs."uuids".ref = "flake-pinning";
  inputs."uuids".dir = "nimpkgs/u/uuids";

  
  inputs."osinfo".url = "path:../../../o/osinfo";
  inputs."osinfo".type = "github";
  inputs."osinfo".owner = "riinr";
  inputs."osinfo".repo = "flake-nimble";
  inputs."osinfo".ref = "flake-pinning";
  inputs."osinfo".dir = "nimpkgs/o/osinfo";

  
  inputs."puppy".url = "path:../../../p/puppy";
  inputs."puppy".type = "github";
  inputs."puppy".owner = "riinr";
  inputs."puppy".repo = "flake-nimble";
  inputs."puppy".ref = "flake-pinning";
  inputs."puppy".dir = "nimpkgs/p/puppy";

  outputs = { self, nixpkgs, src-analytics-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-analytics-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-analytics-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}