{
  description = ''Simple DNS Client & Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-dnsclient-0_0_2.flake = false;
  inputs.src-dnsclient-0_0_2.type = "github";
  inputs.src-dnsclient-0_0_2.owner = "ba0f3";
  inputs.src-dnsclient-0_0_2.repo = "dnsclient.nim";
  inputs.src-dnsclient-0_0_2.ref = "refs/tags/0.0.2";
  inputs.src-dnsclient-0_0_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-dnsclient-0_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dnsclient-0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dnsclient-0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}