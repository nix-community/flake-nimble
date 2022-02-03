{
  description = ''Simple DNS Client & Library'';
  inputs.src-dnsclient-0_1_0.flake = false;
  inputs.src-dnsclient-0_1_0.type = "github";
  inputs.src-dnsclient-0_1_0.owner = "ba0f3";
  inputs.src-dnsclient-0_1_0.repo = "dnsclient.nim";
  inputs.src-dnsclient-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-dnsclient-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dnsclient-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dnsclient-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}