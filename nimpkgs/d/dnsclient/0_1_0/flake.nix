{
  description = ''Simple DNS Client & Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-dnsclient-0_1_0.flake = false;
  inputs.src-dnsclient-0_1_0.type = "github";
  inputs.src-dnsclient-0_1_0.owner = "ba0f3";
  inputs.src-dnsclient-0_1_0.repo = "dnsclient.nim";
  inputs.src-dnsclient-0_1_0.ref = "refs/tags/0.1.0";
  inputs.src-dnsclient-0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-dnsclient-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dnsclient-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dnsclient-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}