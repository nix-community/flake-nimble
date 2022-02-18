{
  description = ''Obsolete - please use gles instead!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-io-gles-master.flake = false;
  inputs.src-io-gles-master.type = "github";
  inputs.src-io-gles-master.owner = "nimious";
  inputs.src-io-gles-master.repo = "io-gles";
  inputs.src-io-gles-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-io-gles-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-io-gles-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-io-gles-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}