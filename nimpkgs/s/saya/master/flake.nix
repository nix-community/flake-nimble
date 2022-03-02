{
  description = ''Nim framework for VK'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-saya-master.flake = false;
  inputs.src-saya-master.type = "github";
  inputs.src-saya-master.owner = "Ethosa";
  inputs.src-saya-master.repo = "saya_nim";
  inputs.src-saya-master.ref = "refs/heads/master";
  inputs.src-saya-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-saya-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-saya-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-saya-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}