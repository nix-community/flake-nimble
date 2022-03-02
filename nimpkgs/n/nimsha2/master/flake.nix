{
  description = ''Secure Hash Algorithm - 2, [224, 256, 384, and 512 bits]'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimSHA2-master.flake = false;
  inputs.src-nimSHA2-master.type = "github";
  inputs.src-nimSHA2-master.owner = "jangko";
  inputs.src-nimSHA2-master.repo = "nimSHA2";
  inputs.src-nimSHA2-master.ref = "refs/heads/master";
  inputs.src-nimSHA2-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimSHA2-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimSHA2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimSHA2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}