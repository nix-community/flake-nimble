{
  description = ''Frida wrapper'';
  inputs.src-frida-master.flake = false;
  inputs.src-frida-master.type = "github";
  inputs.src-frida-master.owner = "ba0f3";
  inputs.src-frida-master.repo = "frida.nim";
  inputs.src-frida-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-frida-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-frida-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-frida-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}