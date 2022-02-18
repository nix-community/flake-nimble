{
  description = ''Simple DNS Client & Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-dnsclient-0_0_1.flake = false;
  inputs.src-dnsclient-0_0_1.type = "github";
  inputs.src-dnsclient-0_0_1.owner = "ba0f3";
  inputs.src-dnsclient-0_0_1.repo = "dnsclient.nim";
  inputs.src-dnsclient-0_0_1.ref = "refs/tags/0.0.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-dnsclient-0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dnsclient-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dnsclient-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}