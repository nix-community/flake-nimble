{
  description = ''Secure Hash Algorithm - 2, [224, 256, 384, and 512 bits]'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimsha2-master.flake = false;
  inputs.src-nimsha2-master.type = "github";
  inputs.src-nimsha2-master.owner = "jangko";
  inputs.src-nimsha2-master.repo = "nimSHA2";
  inputs.src-nimsha2-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimsha2-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsha2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimsha2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}