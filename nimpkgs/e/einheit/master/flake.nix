{
  description = ''Pretty looking, full featured, Python-inspired unit test library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-einheit-master.flake = false;
  inputs.src-einheit-master.type = "github";
  inputs.src-einheit-master.owner = "jyapayne";
  inputs.src-einheit-master.repo = "einheit";
  inputs.src-einheit-master.ref = "refs/heads/master";
  inputs.src-einheit-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-einheit-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-einheit-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-einheit-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}