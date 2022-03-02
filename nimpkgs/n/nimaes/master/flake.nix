{
  description = ''Advanced Encryption Standard, Rijndael Algorithm'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimAES-master.flake = false;
  inputs.src-nimAES-master.type = "github";
  inputs.src-nimAES-master.owner = "jangko";
  inputs.src-nimAES-master.repo = "nimAES";
  inputs.src-nimAES-master.ref = "refs/heads/master";
  inputs.src-nimAES-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimAES-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimAES-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimAES-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}