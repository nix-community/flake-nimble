{
  description = ''zfcore is high performance asynchttpserver and web framework for nim lang'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zfcore-v1_0_1.flake = false;
  inputs.src-zfcore-v1_0_1.type = "github";
  inputs.src-zfcore-v1_0_1.owner = "zendbit";
  inputs.src-zfcore-v1_0_1.repo = "nim.zfcore";
  inputs.src-zfcore-v1_0_1.ref = "refs/tags/v1.0.1";
  
  
  inputs."uri3".type = "github";
  inputs."uri3".owner = "riinr";
  inputs."uri3".repo = "flake-nimble";
  inputs."uri3".ref = "flake-pinning";
  inputs."uri3".dir = "nimpkgs/u/uri3";

  outputs = { self, nixpkgs, flakeNimbleLib, src-zfcore-v1_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfcore-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zfcore-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}