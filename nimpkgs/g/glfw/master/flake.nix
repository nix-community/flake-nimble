{
  description = ''A high-level GLFW 3 wrapper'';
  inputs.src-glfw-master.flake = false;
  inputs.src-glfw-master.type = "github";
  inputs.src-glfw-master.owner = "johnnovak";
  inputs.src-glfw-master.repo = "nim-glfw";
  inputs.src-glfw-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-glfw-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glfw-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-glfw-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}