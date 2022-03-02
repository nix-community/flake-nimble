{
  description = ''Nim bindings for stb_truetype.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-stb_truetype-master.flake = false;
  inputs.src-stb_truetype-master.type = "github";
  inputs.src-stb_truetype-master.owner = "guzba";
  inputs.src-stb_truetype-master.repo = "stb_truetype";
  inputs.src-stb_truetype-master.ref = "refs/heads/master";
  inputs.src-stb_truetype-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stb_truetype-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stb_truetype-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stb_truetype-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}