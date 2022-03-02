{
  description = ''search algorithms'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nim_searches-master.flake = false;
  inputs.src-nim_searches-master.type = "github";
  inputs.src-nim_searches-master.owner = "nnahito";
  inputs.src-nim_searches-master.repo = "nim_searched";
  inputs.src-nim_searches-master.ref = "refs/heads/master";
  inputs.src-nim_searches-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nim_searches-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_searches-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nim_searches-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}