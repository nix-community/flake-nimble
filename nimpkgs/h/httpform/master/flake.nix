{
  description = ''Http request form parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-httpform-master.flake = false;
  inputs.src-httpform-master.type = "github";
  inputs.src-httpform-master.owner = "tulayang";
  inputs.src-httpform-master.repo = "httpform";
  inputs.src-httpform-master.ref = "refs/heads/master";
  inputs.src-httpform-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-httpform-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpform-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-httpform-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}