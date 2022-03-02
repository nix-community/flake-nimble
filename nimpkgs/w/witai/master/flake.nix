{
  description = ''wit.ai client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-witai-master.flake = false;
  inputs.src-witai-master.type = "github";
  inputs.src-witai-master.owner = "xmonader";
  inputs.src-witai-master.repo = "witai-nim";
  inputs.src-witai-master.ref = "refs/heads/master";
  inputs.src-witai-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-witai-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-witai-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-witai-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}